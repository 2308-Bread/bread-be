using BreadAPI.Data;
using BreadAPI.Dtos;
using BreadAPI.Models;
using Microsoft.AspNetCore.Mvc;

namespace BreadAPI.Controllers;

[ApiController]
[Route("[controller]")]
public class UserBreadsController : ControllerBase
{
  DataContextDapper _dapper;
  public UserBreadsController(IConfiguration config)
  {
    _dapper = new DataContextDapper(config);
  }

  [HttpGet("BreadBox/{userId}")]
  public IActionResult UserBreadBox(string userId)
  {
    string breadSql = @"
      SELECT Breads.BreadId,
        Breads.Name,
        Breads.Description
      FROM Breads
      JOIN UserBreads ON Breads.BreadId = UserBreads.BreadId
      WHERE UserBreads.UserId = '" + userId.ToString() + "'";

    string userSql = @"
            SELECT Users.UserId,
                Users.FirstName,
                Users.LastName,
                Users.Email
            FROM Users
                WHERE Users.UserId = '" + userId.ToString() + "'"; 

      var (breads, users) = _dapper.LoadDataMultiple<Bread, User>(breadSql, userSql);

      var response = new {
        Breads = breads,
        User = users
      };

      return Ok(response);
  }

  [HttpGet("Brusers/{userId}")]
  public IEnumerable<UserBread> Brusers(string userId)
  {
    string sql = @"
      SELECT Breads.BreadId,
        Breads.Name,
        Breads.Description,
        Users.FirstName,
        Users.LastName,
        Users.Email
      FROM Breads
      JOIN UserBreads ON Breads.BreadId = UserBreads.BreadId
      RIGHT JOIN Users ON UserBreads.UserId = Users.UserId
      WHERE UserBreads.UserId = '" + userId + "'";

      IEnumerable<UserBread> brusers = _dapper.LoadData<UserBread>(sql);
      return brusers;
  }



  // [HttpGet("bbjson/{userId}")]
  // public IActionResult UserBreadBoxCustomer(string userId)
  // {
  //   string breadSql = @"
  //     SELECT Breads.BreadId,
  //       Breads.Name,
  //       Breads.Description
  //     FROM Breads
  //     JOIN UserBreads ON Breads.BreadId = UserBreads.BreadId
  //     WHERE UserBreads.UserId = '" + userId.ToString() + "'";

  //   string userSql = @"
  //     SELECT Users.UserId,
  //         Users.FirstName,
  //         Users.LastName,
  //         Users.Email
  //     FROM Users
  //         WHERE Users.UserId = '" + userId.ToString() + "'";
  //   var breads = _dapper.LoadData<Bread>(breadSql);
  //   var user = _dapper.LoadData<User>(userSql);

  //   var response = new CustomApiResponse 
  //   {
  //     Breads = breads,
  //     User = user
  //   };

  // }




// The below work around works
  // [HttpGet("BreadBoxworkaround/{userId}")]
  // public IEnumerable<UserBread> UserBreadBox(string userId)
  // {
  //   string sql = @"
  //     SELECT Breads.BreadId,
  //       Breads.Name,
  //       Breads.Description,
  //       Users.UserId,
  //       Users.FirstName,
  //       Users.LastName,
  //       Users.Email
  //     FROM Breads
  //     JOIN UserBreads ON Breads.BreadId = UserBreads.BreadId 
  //     JOIN Users ON UserBreads.UserId = Users.UserId
  //     WHERE Users.UserId = '" + userId.ToString() + "'";

  //   IEnumerable<UserBread> userbreads = _dapper.LoadData<UserBread>(sql);
  //   return userbreads;
  // }
}