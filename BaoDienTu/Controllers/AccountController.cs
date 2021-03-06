﻿using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Threading.Tasks;
using BaoDienTu.BAL.Interface;
using BaoDienTu.Domain;
using BaoDienTu.Domain.Request.Account;
using BaoDienTu.Domain.Response.Account;
using Microsoft.AspNetCore.Hosting;
using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Identity;
using Microsoft.AspNetCore.Mvc;

namespace BaoDienTu.API.Controllers
{
    [Route("api/[controller]")]
    [ApiController]
    public class AccountController : ControllerBase
    {
        private readonly UserManager<ApplicationUser> userManager;
        private readonly SignInManager<ApplicationUser> signInManager;
        private readonly RoleManager<IdentityRole> roleManager;
        private readonly IWebHostEnvironment webHostEnvironment;
        private readonly IAccountService accountService;

        public AccountController(UserManager<ApplicationUser> userManager,
                                    SignInManager<ApplicationUser> signInManager,
                                    RoleManager<IdentityRole> roleManager,
                                    IWebHostEnvironment webHostEnvironment,
                                    IAccountService accountService
                                    )
        {
            this.userManager = userManager;
            this.signInManager = signInManager;
            this.roleManager = roleManager;
            this.webHostEnvironment = webHostEnvironment;
            this.accountService = accountService;
        }
        [HttpPost]
        [Route("/api/account/login")]
        public async Task<LoginResult> Login(LoginRequest request)
        {
            var result = new LoginResult()
            {
                Message = "something went wrong, please try again",
                Success = false,
                UserId = string.Empty
            };

            var siginResult = await signInManager.PasswordSignInAsync(request.Email, request.Password, false, false);

            if (siginResult.Succeeded)
            {
                var user = await userManager.FindByNameAsync(request.Email);
                if (user != null)
                {
                    result.Success = siginResult.Succeeded;
                    result.UserId = user.Id;
                    result.Message = "Login success";
                }
            }

            return result;
        }
        [HttpPost]
        [Route("/api/account/register")]
        public async Task<RegisterResult> Register(RegisterRequest request)
        {
            var result = new RegisterResult()
            {
                Message = "something went wrong, please try again",
                Success = false
            };

            var user = new ApplicationUser()
            {   
                
                Email = request.Email,
                UserName = request.Email,
                DoB=request.DoB,
                PhoneNumber=request.PhoneNumber,
                FullName=request.FullName,
                Gender=request.Gender,
                Avatar=request.Avatar,
                Address=request.Address,
                DateCreated= DateTime.Now
            };

            var registerResult = await userManager.CreateAsync(user, request.Password);
            if (registerResult.Succeeded)
            {
                result.Message = "Register success";
                result.Success = registerResult.Succeeded;
            }
            return result;
        }
        [HttpGet]
        [Route("/api/account/getUserByUserId/{userId}")]
        public async Task<GetUserByUserIdResult> GetUserByUserId(string userId)
        {
            return await accountService.GetUserByUserId(userId);
        }
        [HttpPost]
        [Route("/api/account/update")]
        public async Task<UpdateUserResult> Update(UpdateUser request)
        {
            return await accountService.Update(request);
        }

    }
}
