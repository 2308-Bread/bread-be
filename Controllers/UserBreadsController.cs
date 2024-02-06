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
      SELECT * FROM Users WHERE Users.UserId = '" + userId.ToString() + "'";

      var (breads, users) = _dapper.LoadDataMultiple<Bread, User>(breadSql, userSql);

      var response = new {
        Breads = breads,
        User = users
      };

      return Ok(response);
  }
}