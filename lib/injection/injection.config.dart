// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:article/data/data_source/data_source.dart' as _i3;
import 'package:article/data/data_source/remote_data_source.dart' as _i4;
import 'package:article/data/repositories/article_repo_impl.dart' as _i6;
import 'package:article/domain/repositories/article_repo.dart' as _i5;
import 'package:article/domain/usecases/article_usecases/get_all_articles_usecase.dart'
    as _i7;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

extension GetItInjectableX on _i1.GetIt {
// initializes the registration of main-scope dependencies inside of GetIt
  _i1.GetIt init({
    String? environment,
    _i2.EnvironmentFilter? environmentFilter,
  }) {
    final gh = _i2.GetItHelper(
      this,
      environment,
      environmentFilter,
    );
    gh.lazySingleton<_i3.DataSource>(() => _i4.RemoteDataSource());
    gh.lazySingleton<_i5.ArticleRepo>(
        () => _i6.ArticleRepoImpl(gh<_i3.DataSource>()));
    gh.lazySingleton<_i7.GetAllArticlesUseCase>(
        () => _i7.GetAllArticlesUseCase(gh<_i5.ArticleRepo>()));
    return this;
  }
}
