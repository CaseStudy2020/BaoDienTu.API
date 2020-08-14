using BaoDienTu.Domain.Request.Post;
using BaoDienTu.Domain.Response.Post;
using System;
using System.Collections.Generic;
using System.Text;
using System.Threading.Tasks;

namespace BaoDienTu.DAL.Interface
{
    public interface IPostRepository
    {
        Task<IEnumerable<PostView>> Gets();
        Task<IEnumerable<FastInfoPostView>> GetsFastInfoPost();
        Task<IEnumerable<Fast5InfoPostView>> Gets5FastInfoPost();
        Task<PostView> Get(int postId);
        Task<DeletePostResult> Delete(int postId);
        Task<SavePostResult> Save(SavePost request);
        Task<CreatePostResult> Create(CreatePost request);
        Task<UpdatePostResult> Update(UpdatePost request);
        Task<IEnumerable<PostByCategoryId>> GetPostByCategoryId(int categoryId);
        Task<IEnumerable<PostBySubCategoryId>> GetPostBySubCategoryId(int subCategoryId);
        Task<IEnumerable<TopPostByDay>> GetTopPostByDay(DateTime dateToGet, int numberOfPost);
        Task<IEnumerable<Top10MostViewOfDay>> GetTop10MostViewOfDay();
        Task<IEnumerable<Top5LastestPost>> GetsTop5LastestPost();
        Task<IEnumerable<Top3LastestPostByCategoryId>> GetsTop3LastestPostByCategoryId(int categoryId);
    }
}
