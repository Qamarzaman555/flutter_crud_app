import 'package:flutter/foundation.dart' show immutable;
import 'package:clean_architecture_bloc/common/usecase/usecase.dart';
import 'package:clean_architecture_bloc/common/network/api_result.dart';
import 'package:clean_architecture_bloc/features/post/data/models/post.dart';
import 'package:clean_architecture_bloc/features/post/domain/repositories/post_repository.dart';

@immutable
class UpdatePostUseCase implements UseCase<bool, UpdatePostParams> {
  final PostRepository postRepository;

  const UpdatePostUseCase(this.postRepository);

  @override
  Future<ApiResult<bool>> call(UpdatePostParams params) async {
    return await postRepository.updatePost(params.post);
  }
}

@immutable
class UpdatePostParams {
  final Post post;

  const UpdatePostParams(this.post);
}
