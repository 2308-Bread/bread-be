using BreadAPI.Data;
using BreadAPI.Dtos;
using BreadAPI.Models;
using Microsoft.AspNetCore.Mvc;
using Microsoft.IdentityModel.Tokens;

namespace BreadAPI.Controllers;

[ApiController]
[Route("[controller]")]
public class UserController : ControllerBase
{
    DataContextDapper _dapper;
    public UserController(IConfiguration config)
    {
        _dapper = new DataContextDapper(config);
    }
    
    [HttpGet("TestConnection")]
    public DateTime TestConnection()
    {
        return _dapper.LoadDataSingle<DateTime>("SELECT GETDATE()");
    }

    [HttpGet("GetUsers")]
    // public IEnumerable<User> GetUsers()
    public IEnumerable<User> GetUsers()
    {
        string sql = @"
            SELECT [UserId],
                [FirstName],
                [LastName],
                [Email]
            FROM Users";
        IEnumerable<User> users = _dapper.LoadData<User>(sql);
        return users;
    }

    [HttpGet("GetSingleUser/{userId}")]
    public User GetSingleUser(int userId)
    {
        string sql = @"
            SELECT [UserId],
                [FirstName],
                [LastName],
                [Email]
            FROM Users
                WHERE UserId = " + userId.ToString(); 
        User user = _dapper.LoadDataSingle<User>(sql);
        return user;
    }
    
    [HttpPut("EditUser")]
    public IActionResult EditUser(User user)
    {
        // Assuming 'user' is an object of a User class
string sql = "UPDATE Users SET ";

List<string> updates = new List<string>();

if (!user.FirstName.IsNullOrEmpty())
{
    updates.Add("[FirstName] = '" + user.FirstName + "'");
}

if (!user.LastName.IsNullOrEmpty())
{
    updates.Add("[LastName] = '" + user.LastName + "'");
}

if (!user.Email.IsNullOrEmpty())
{
    updates.Add("[Email] = '" + user.Email + "'");
}

sql += string.Join(", ", updates) + " WHERE UserId = " + user.UserId;

        
        Console.WriteLine(sql);

        if (_dapper.ExecuteSql(sql))
        {
            return Ok();
        } 

        throw new Exception("Failed to Update User");
    }


    [HttpPost("AddUser")]
    public IActionResult AddUser(UserToAddDto user)
    {
        string sql = @"
            INSERT INTO Users(
                [FirstName],
                [LastName],
                [Email]
            ) VALUES (" +
                "'" + user.FirstName + 
                "', '" + user.LastName +
                "', '" + user.Email + 
            "')";
        
        Console.WriteLine(sql);

        if (_dapper.ExecuteSql(sql))
        {
            return Ok();
        } 

        throw new Exception("Failed to Add User");
    }

    [HttpDelete("DeleteUser/{userId}")]
    public IActionResult DeleteUser(int userId)
    {
        string sql = @"
            DELETE FROM Users 
                WHERE UserId = " + userId.ToString();
        
        Console.WriteLine(sql);

        if (_dapper.ExecuteSql(sql))
        {
            return Ok();
        } 

        throw new Exception("Failed to Delete User");
    }
}
