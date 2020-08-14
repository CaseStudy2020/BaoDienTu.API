using BaoDienTu.DAL.Interface;
using BaoDienTu.Domain.Request.SubCategory;
using BaoDienTu.Domain.Response.Subcategory;
using Dapper;
using System;
using System.Collections.Generic;
using System.Data;
using System.Text;
using System.Threading.Tasks;

namespace BaoDienTu.DAL
{
    public class SubCategoryRepository : BaseRepository, ISubCategoryRepository
    {
        public async Task<CreateSubCategoryResult> Create(CreateSubCategory request)
        {
            try
            {
                DynamicParameters parameters = new DynamicParameters();
                parameters.Add(@"CategoryId", request.CategoryId);
                parameters.Add(@"SubCategoryName", request.SubCategoryName);


                return (await SqlMapper.QueryFirstOrDefaultAsync<CreateSubCategoryResult>(cnn: conn,
                                      param: parameters,
                                      sql: "SP_createSubCategory",
                                      commandType: CommandType.StoredProcedure));
            }
            catch (Exception e)
            {
                return new CreateSubCategoryResult()
                {
                    SubCategoryId = 0,
                    Message = "Something went wrong, please try again"
                };
            }
        }

        public async Task<DeleteSubCategoryResult> Delete(int subCategoryId)
        {
            DynamicParameters parameters = new DynamicParameters();
            parameters.Add(@"SubCategoryId", subCategoryId);
            return (await SqlMapper.QueryFirstOrDefaultAsync<DeleteSubCategoryResult>(cnn: conn,
                             param: parameters,
                            sql: "SP_softDeleteSubCategoryById",
                            commandType: CommandType.StoredProcedure));
        }

        public async Task<SubCategory> Get(int id)
        {
            DynamicParameters parameters = new DynamicParameters();
            parameters.Add(@"SubCategoryId", id);
            return (await SqlMapper.QueryFirstOrDefaultAsync<SubCategory>(cnn: conn,
                             param: parameters,
                            sql: "SP_getSubCategoryId",
                            commandType: CommandType.StoredProcedure));
        }

        public async Task<IEnumerable<SubByCategoryId>> GetPostByCategoryId(int categoryId)
        {
            DynamicParameters parameters = new DynamicParameters();
            parameters.Add(@"CategoryId", categoryId);
            return (await SqlMapper.QueryAsync<SubByCategoryId>(cnn: conn,
                                param: parameters,
                                sql: "SP_getSubcategoryByCategoryId",
                                commandType: CommandType.StoredProcedure));
        }

        public async Task<UpdateSubCategoryResult> Update(UpdateSubCategory request)
        {
            try
            {
                DynamicParameters parameters = new DynamicParameters();
                parameters.Add(@"CategoryId", request.CategoryId);
                parameters.Add(@"SubCategoryId", request.SubCategoryId);
                parameters.Add(@"SubCategoryName", request.SubCategoryName);


                return (await SqlMapper.QueryFirstOrDefaultAsync<UpdateSubCategoryResult>(cnn: conn,
                                      param: parameters,
                                      sql: "SP_editSubCategory",
                                      commandType: CommandType.StoredProcedure));
            }
            catch (Exception e)
            {
                return new UpdateSubCategoryResult()
                {
                    SubCategoryId = 0,
                    Message = "Something went wrong, please try again"
                };
            }
        }
    }
}
