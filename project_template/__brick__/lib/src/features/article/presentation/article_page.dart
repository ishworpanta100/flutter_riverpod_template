import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../../common/services/api_url.dart';
import '../../../common/widgets/widgets.dart';
import '../../../constants/constants.dart';
import '../provider/article_provider.dart';

class ArticlePage extends ConsumerWidget {
  const ArticlePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    // final articleProviderValue = ref.watch(articleDataProvider);
    // final articlePaginatedProviderValue = ref.watch(articlePaginatedDataProvider(limit: ApiConstantsValues.limit));
    return Scaffold(
      appBar: AppBar(
        title: const Text('Article Fetch'),
      ),
      body: const _ArticlePageListViewWidget(),
      // body: AsyncValueWidget<ArticleBaseModel>(
      //   value: articlePaginatedProviderValue,
      //   data: (articleData) {
      //     log('articleData: $articleData');
      //     return ListView.builder(
      //       itemCount: articleData.article.length,
      //       itemBuilder: (context, index) {
      //         final article = articleData.article[index];
      //         //TODO: fields
      //         return ListTile(
      //           title: Text(article.title),
      //           subtitle: Text(article.description),
      //         );
      //       },
      //     );
      //   },
      // ),
    );
  }
}

class _ArticlePageListViewWidget extends ConsumerWidget {
  const _ArticlePageListViewWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return RefreshIndicator(
      onRefresh: () {
        // disposes the pages previously fetched. Next read will refresh them
        ref.invalidate(articlePaginatedDataProvider);
        // keep showing the progress indicator until the first page is fetched
        return ref.read(
          articlePaginatedDataProvider(
            offset: 0,
            limit: ApiConstantsValues.limit,
          ).future,
        );
      },
      child: ListView.custom(
        padding: const EdgeInsets.only(top: Sizes.p8),
        physics: const BouncingScrollPhysics(),
        childrenDelegate: SliverChildBuilderDelegate(
          (context, index) {
            final page = index ~/ ApiConstantsValues.limit;

            final itemIndex = index % ApiConstantsValues.limit;
            final pageValue = ref.watch(articlePaginatedDataProvider(
              offset: page * ApiConstantsValues.limit,
              limit: ApiConstantsValues.limit,
            ));
            return pageValue.when(
              data: (items) {
                if (itemIndex >= items.artilces.length) {
                  return null;
                }

                final articleItem = items.artilces[itemIndex];
                return ListTile(
                  title: Text(articleItem.title),
                  subtitle: Text(articleItem.description),
                );
              },
              error: (err, st) {
                if (itemIndex != 0) return null;
                return Center(child: ErrorMessageWidget(err.toString()));
              },
              loading: () {
                if (itemIndex != 0) return null;
                return Column(
                  children: const [
                    gapH32,
                    Center(
                      child: CustomProgressWidget(),
                    ),
                    gapH32,
                  ],
                );
              },
            );
          },
        ),
      ),
    );
  }
}
