import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:meno_fe_v2/core/responses/bible_response.dart';
import 'package:meno_fe_v2/modules/bible/infrastructure/dtos/book_dto.dart';
import 'package:meno_fe_v2/modules/bible/infrastructure/dtos/chapter_dto.dart';
import 'package:retrofit/retrofit.dart';

part 'bible_remote_datasource.g.dart';

@RestApi()
abstract class BibleRemoteDatasource {
  @factoryMethod
  factory BibleRemoteDatasource(
    Dio dio, {
    String baseUrl,
  }) = _BibleRemoteDatasource;

  @GET("/api/books")
  Future<BibleResponse<List<BookDto>>> getBooks();

  @GET("/api/translations")
  Future<BibleResponse<List<String>>> getTranslations();

  @GET("/api/version/")
  Future<BibleResponse<ChapterDto>> getChapter({
    @Query("q") required String reference,
    @Query("v") required String translation,
  });

  @GET("/api/version/")
  Future<BibleResponse<ChapterDto>> getVerses({
    @Query("q") required String reference,
    @Query("v") required String translation,
  });
}
