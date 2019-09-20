using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using Microsoft.AspNetCore.Builder;
using Microsoft.AspNetCore.Hosting;
using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.HttpsPolicy;
using Microsoft.AspNetCore.Mvc;
using Microsoft.Extensions.Configuration;
using Microsoft.Extensions.DependencyInjection;
using ProjectWebDataAccess;
using ProjectWebICoreService;

namespace ProjectWeb
{
    public class Startup
    {
        public Startup(IConfiguration configuration)
        {
            Configuration = configuration;
        }

        public IConfiguration Configuration { get; }

        // This method gets called by the runtime. Use this method to add services to the container.
        public void ConfigureServices(IServiceCollection services)
        {
            //services.Configure<CookiePolicyOptions>(options =>
            //{
            //    // This lambda determines whether user consent for non-essential cookies is needed for a given request.
            //    options.CheckConsentNeeded = context => true;
            //    options.MinimumSameSitePolicy = SameSiteMode.None;
            //});

            services.AddSession(opts=> {
                int timespan = 20;
                opts.IdleTimeout = TimeSpan.FromMinutes(timespan);
            });
            services.AddScoped<tbMenuICoreService, tbMenuDAL>();
            services.AddScoped<tbRoleICoreService, tbRoleDAL>();
            services.AddScoped<tbUserICoreService, tbUserDAL>();
            services.AddMvc().SetCompatibilityVersion(CompatibilityVersion.Version_2_2);
        }

        // This method gets called by the runtime. Use this method to configure the HTTP request pipeline.
        public void Configure(IApplicationBuilder app, IHostingEnvironment env)
        {
            if (env.IsDevelopment())
            {
                app.UseDeveloperExceptionPage();
            }
            else
            {
                app.UseExceptionHandler(build =>
                                          build.Run(async context =>
                                                                {
                                                                    var ex = context.Features.Get<Microsoft.AspNetCore.Diagnostics.IExceptionHandlerFeature>()?.Error;
                                                                    if (ex != null)
                                                                    {
                                                                        context.Response.StatusCode = 500;
                                                                        context.Response.ContentType = "text/plain;charset=utf-8";
                                                                        context.Response.Redirect("/Errors/Errors500?Message=" + ex.Message);
                                                                    }
                                                                }
                                                         ));
            }

            app.UseJump404();
            app.UseHttpsRedirection();
            app.UseStaticFiles();
            app.UseCookiePolicy();
            app.UseSession();
            app.UseMvc(routes =>
            {
                routes.MapRoute(
                    name: "default",
                    template: "{controller=Home}/{action=Index}/{id?}");
            });
        }
    }
}

public static class Jump404MiddlewareExtension
{
    public static void UseJump404(this IApplicationBuilder app)
    {
        app.UseMiddleware<Jump404Middleware>();
    }
}
public class Jump404Middleware
{
    private readonly RequestDelegate next;

    public Jump404Middleware(RequestDelegate next)
    {
        this.next = next;
    }

    public async Task Invoke(
        Microsoft.AspNetCore.Http.HttpContext context)
    {
        await next.Invoke(context);

        var response = context.Response;

        //如果是404就跳转到主页
        if (response.StatusCode == 404)
        {
            response.Redirect("/Errors/Errors404");
        }
    }
}