import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../../common/services/api_url.dart';
import '../../../common/widgets/widgets.dart';
import '../../../constants/constants.dart';
import '../{{feature_name}}_barrel.dart';
import '../provider/{{feature_name}}_providers.dart';


class {{feature_name.pascalCase()}}Page extends ConsumerWidget {
  const {{feature_name.pascalCase()}}Page({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    // final {{feature_name.camelCase()}}ProviderValue = ref.watch({{feature_name.camelCase()}}DataProvider);
    // final {{feature_name.camelCase()}}PaginatedProviderValue = ref.watch({{feature_name.camelCase()}}PaginatedDataProvider(limit: ApiConstantsValues.limit));
    return Scaffold(
      appBar: AppBar(
        title: const Text('{{feature_name.pascalCase()}} Fetch'),
      ),
      body: Center(
        child: Text('{{feature_name.pascalCase()}} Page'),
      )
      // body: const _{{feature_name.pascalCase()}}PageListViewWidget(),
      // body: AsyncValueWidget<{{feature_name.pascalCase()}}BaseModel>(
      //   value: {{feature_name.camelCase()}}ProviderValue,
      //   data: ({{feature_name.camelCase()}}Data) {
      //     log('{{feature_name.camelCase()}}Data: ${{feature_name.camelCase()}}Data');
      //     return ListView.builder(
      //       itemCount: {{feature_name.camelCase()}}Data.{{api_base_key}}.length,
      //       itemBuilder: (context, index) {
      //         final {{feature_name.camelCase()}} = {{feature_name.camelCase()}}Data.{{api_base_key}}[index];
      //         //TODO: fields
      //         return ListTile(
      //           title: Text({{feature_name.camelCase()}}.{{api_sub_key_one}}),
      //           subtitle: Text({{feature_name.camelCase()}}.{{api_sub_key_one}}),
      //         );
      //       },
      //     );
      //   },
      // ),
    );
  }
}

// class _{{feature_name.pascalCase()}}PageListViewWidget extends ConsumerWidget {
//   const _{{feature_name.pascalCase()}}PageListViewWidget({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context, WidgetRef ref) {
//     return RefreshIndicator(
//       onRefresh: () {
//         // disposes the pages previously fetched. Next read will refresh them
//         ref.invalidate({{feature_name.camelCase()}}PaginatedDataProvider);
//         // keep showing the progress indicator until the first page is fetched
//         return ref.read(
//           {{feature_name.camelCase()}}PaginatedDataProvider(
//             offset: 0,
//             limit: ApiConstantsValues.limit,
//           ).future,
//         );
//       },
//       child: ListView.custom(
//         padding: const EdgeInsets.only(top: Sizes.p8),
//         physics: const BouncingScrollPhysics(),
//         childrenDelegate: SliverChildBuilderDelegate(
//           (context, index) {
//             final page = index ~/ ApiConstantsValues.limit;

//             final itemIndex = index % ApiConstantsValues.limit;
//             final pageValue = ref.watch({{feature_name.camelCase()}}PaginatedDataProvider(
//               offset: page * ApiConstantsValues.limit,
//               limit: ApiConstantsValues.limit,
//             ));
//             return pageValue.when(
//               data: (items) {
//                 if (itemIndex >= items.{{api_base_key}}.length) {
//                   return null;
//                 }

//                 final {{feature_name.camelCase()}}Item = items.{{api_base_key}}[itemIndex];
//                 return ListTile(
//                   title: Text({{feature_name.camelCase()}}Item.{{api_sub_key_one}}),
//                   subtitle: Text({{feature_name.camelCase()}}Item.{{api_sub_key_two}}),
//                 );
//               },
//               error: (err, st) {
//                 if (itemIndex != 0) return null;
//                 return Center(child: ErrorMessageWidget(err.toString()));
//               },
//               loading: () {
//                 if (itemIndex != 0) return null;
//                 return Column(
//                   children: const [
//                     gapH32,
//                     Center(
//                       child: CustomProgressWidget(),
//                     ),
//                     gapH32,
//                   ],
//                 );
//               },
//             );
//           },
//         ),
//       ),
//     );
//   }
// }
