﻿using BaoDienTu.BAL.Interface;
using BaoDienTu.DAL.Interface;
using BaoDienTu.Domain.Request.Post;
using BaoDienTu.Domain.Response.Post;
using BaoDienTu.Domain.Response.Search;
using System;
using System.Collections.Generic;
using System.Security.AccessControl;
using System.Text;
using System.Threading.Tasks;

namespace BaoDienTu.BAL
{
    public class PostService : IPostService
    {
        private readonly IPostRepository postRepository;

        public PostService(IPostRepository postRepository)
        {
            this.postRepository = postRepository;
        }

        public async Task<CreatePostResult> Create(CreatePost request)
        {
            return await postRepository.Create(request);
        }

        public async Task<DeletePostResult> Delete(int postId)
        {
            return await postRepository.Delete(postId);
        }

        public async Task<PostView> Get(int postId)
        {
            return await postRepository.Get(postId);
        }

        public async Task<IEnumerable<PostByCategoryId>> GetPostByCategoryId(int categoryId)
        {
            return await postRepository.GetPostByCategoryId(categoryId);
        }

        public async Task<IEnumerable<PostBySubCategoryId>> GetPostBySubCategoryId(int subCategoryId)
        {
            return await postRepository.GetPostBySubCategoryId(subCategoryId);
        }

        public async Task<IEnumerable<PostView>> Gets()
        {
            return await postRepository.Gets();
        }

        public async Task<IEnumerable<Fast5InfoPostView>> Gets5FastInfoPost()
        {
            return await postRepository.Gets5FastInfoPost();
        }

        public async Task<IEnumerable<Top5LastestPost>> GetsTop5LastestPost()
        {
            return await postRepository.GetsTop5LastestPost();
        }

        public async Task<IEnumerable<FastInfoPostView>> GetsFastInfoPost()
        {
            return await postRepository.GetsFastInfoPost();
        }

        public async Task<IEnumerable<Top10MostViewOfDay>> GetTop10MostViewOfDay()
        {
            return await postRepository.GetTop10MostViewOfDay();
        }

        public async Task<IEnumerable<TopPostByDay>> GetTopPostByDay(DateTime dateToGet, int numberOfPost)
        {
            return await postRepository.GetTopPostByDay(dateToGet, numberOfPost);
        }

        public async Task<SavePostResult> Save(SavePost request)
        {
            return await postRepository.Save(request);
        }

        public async Task<UpdatePostResult> Update(UpdatePost request)
        {
            return await postRepository.Update(request);
        }


        public async Task<IEnumerable<Top3LastestPostByCategoryId>> GetsTop3LastestPostByCategoryId(int categoryId)
        {
            return await postRepository.GetsTop3LastestPostByCategoryId(categoryId);

        }
        public async Task<List<SearchPost>> Search(string keyword)
        {
            return await postRepository.Search(keyword);
        }

        public async Task<List<SearchPost>>SearchContent(string keyword)
        {
            return await postRepository.SearchContent(keyword);
        }

        public async Task<List<SearchPost>> SearchDate(string keyword)
        {
            return await postRepository.SearchDate(keyword);
        }
    }
}
