using BaoDienTu.DAL.Interface;
using BaoDienTu.Domain.Request.Category;
using BaoDienTu.Domain.Response.Category;
using Dapper;
using System;
using System.Collections.Generic;
using System.Data;
using System.Text;
using System.Threading.Tasks;

namespace BaoDienTu.DAL
{
    public class CategoryRepository : BaseRepository, ICategoryRepository
    {
        public async Task<CreateCategoryResult> Create(CreateCategory request)
        {
            try
            {
                DynamicParameters parameters = new DynamicParameters();
                parameters.Add(@"CategoryId", request.CategoryId);
                parameters.Add("@CategoryName", request.CategoryName);
               

                return (await SqlMapper.QueryFirstOrDefaultAsync<CreateCategoryResult>(cnn: conn,
                                      param: parameters,
                                      sql: "sp_SaveCategory",
                                      commandType: CommandType.StoredProcedure));
            }
            catch (Exception e)
            {
                return new CreateCategoryResult()
                {
                    CategoryId = 0,
                    Message = "Something went wrong, please try again"
                };
            }
        }

        public async Task<DeleteCategoryResult> Delete(int categoryId)
        {
            DynamicParameters parameters = new DynamicParameters();
            parameters.Add(@"CategoryId", categoryId);
            return (await SqlMapper.QueryFirstOrDefaultAsync<DeleteCategoryResult>(cnn: conn,
                             param: parameters,
                            sql: "SP_softDeleteCategoryById",
                            commandType: CommandType.StoredProcedure));
        }

        public async Task<Category> Get(int id)
        {
            DynamicParameters parameters = new DynamicParameters();
            parameters.Add(@"CategoryId", id);
            return (await SqlMapper.QueryFirstOrDefaultAsync<Category>(cnn: conn,
                             param: parameters,
                            sql: "SP_getCategoryId",
                            commandType: CommandType.StoredProcedure));
        }

        public async Task<IEnumerable<CategoryView>> Gets()
        {
            return await SqlMapper.QueryAsync<CategoryView>(conn, "SP_getAllCategory", CommandType.StoredProcedure);
        }

        //public async Task<UpdateCategoryResult> Update(UpdateCategory request)
        //{
        //    try
        //    {
        //        DynamicParameters parameters = new DynamicParameters();
        //        parameters.Add("@CategoryId", request.CategoryId);
        //        parameters.Add("@CategoryName", request.CategoryName);


        //        return (await SqlMapper.QueryFirstOrDefaultAsync<UpdateCategoryResult>(cnn: conn,
        //                              param: parameters,
        //                              sql: "SP_editCategory",
        //                              commandType: CommandType.StoredProcedure));
        //    }
        //    catch (Exception e)
        //    {
        //        return new UpdateCategoryResult()
        //        {
        //            CategoryId = 0,
        //            Message = "Something went wrong, please try again"
        //        };
        //    }
        //}
    }
}
