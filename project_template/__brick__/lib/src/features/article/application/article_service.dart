import '../domain/article_model.dart';

abstract class IArticleService {
  Future<ArticleModel> getArticleData();
} 
