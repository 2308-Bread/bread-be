using System.Data;
using BreadAPI.Models;
using Dapper;
using Microsoft.Data.SqlClient;

namespace BreadAPI.Data
{
    class DataContextDapper
    {
        private readonly IConfiguration _config;
        public DataContextDapper(IConfiguration config)
        {
            _config = config;
        }

        public IEnumerable<T> LoadData<T>(string sql)
        {
            IDbConnection dbConnection = new SqlConnection(_config.GetConnectionString("DefaultConnection"));

            return dbConnection.Query<T>(sql);
        }

        public T LoadDataSingle<T>(string sql)
        {
            IDbConnection dbConnection = new SqlConnection(_config.GetConnectionString("DefaultConnection"));
            return dbConnection.QuerySingle<T>(sql);
        }

        public bool ExecuteSql(string sql)
        {
            IDbConnection dbConnection = new SqlConnection(_config.GetConnectionString("DefaultConnection"));
            return dbConnection.Execute(sql) > 0;
        }

        public int ExecuteSqlWithRowCount(string sql)
        {
            IDbConnection dbConnection = new SqlConnection(_config.GetConnectionString("DefaultConnection"));
            return dbConnection.Execute(sql);
        }

        public (IEnumerable<T1>, T2) LoadDataMultiple<T1, T2>(string breadSql, string userSql)
        {
            IDbConnection dbConnection = new SqlConnection(_config.GetConnectionString("DefaultConnection"));
            // return dbConnection.QueryMultiple(breadSql, userSql);
            // dbConnection.Open();

            var result = dbConnection.QueryMultiple(breadSql, userSql);

            // var user = result.Read<T2>().FirstOrDefault();
            var breads = result.Read<T1>().ToList();
            var user = result.IsConsumed ? default(T2) : result.Read<T2>().FirstOrDefault();
            // var user = result.Read<T2>().SingleOrDefault();


            // while (!result.IsConsumed) { }

            return (breads, user);
        }
    }
}