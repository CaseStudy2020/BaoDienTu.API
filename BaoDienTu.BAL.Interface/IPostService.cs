using BaoDienTu.Domain.Request.Post;
using BaoDienTu.Domain.Response.Post;
using System;
using System.Collections.Generic;
using System.Text;
using System.Threading.Tasks;

namespace BaoDienTu.BAL.Interface
{
    public interface IPostService
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
    }
}

