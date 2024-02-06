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

  // [HttpGet("BreadBox/{userId}")]
  // public IActionResult UserBreadBox(string userId)
  // {
  //   string breadSql = @"
  //     SELECT Breads.BreadId,
  //       Breads.Name,
  //       Breads.Description
  //     FROM Breads
  //     JOIN UserBreads ON Breads.BreadId = UserBreads.BreadId
  //     WHERE UserBreads.UserId = '" + userId.ToString() + "'";

  //   string userSql = @"
  //           SELECT Users.UserId,
  //               Users.FirstName,
  //               Users.LastName,
  //               Users.Email
  //           FROM Users
  //               WHERE Users.UserId = '" + userId.ToString() + "'"; 

  //     var (breads, users) = _dapper.LoadDataMultiple<Bread, User>(breadSql, userSql);

  //     var response = new {
  //       Breads = breads,
  //       User = users
  //     };

  //     return Ok(response);
  // }

// The below work around works

  [HttpGet("BreadBoxworkaround/{userId}")]
  public IEnumerable<UserBread> UserBreadBox(string userId)
  {
    string sql = @"
      SELECT Breads.BreadId,
        Breads.Name,
        Breads.Description,
        Users.UserId,
        Users.FirstName,
        Users.LastName,
        Users.Email
      FROM Breads
      JOIN UserBreads ON Breads.BreadId = UserBreads.BreadId 
      JOIN Users ON UserBreads.UserId = Users.UserId
      WHERE Users.UserId = '" + userId.ToString() + "'";

    IEnumerable<UserBread> userbreads = _dapper.LoadData<UserBread>(sql);
    return userbreads;
  }
}