using Application;
using Infrastructure;
using Microsoft.AspNetCore.Mvc.Infrastructure;
using Presentation;
using WebApi.Common.Errors;

var builder = WebApplication.CreateBuilder(args);
builder.Services
    .AddApplication()
    .AddInfrastructure(builder.Configuration)
    .AddPresentation();

builder.Services.AddControllers();

builder.Services.AddSingleton<ProblemDetailsFactory, SportifyProblemDetailsFactory>();

builder.Services.AddEndpointsApiExplorer();
builder.Services.AddSwaggerGen();


var app = builder.Build();
if (app.Environment.IsDevelopment())
{
    app.UseSwagger();
    app.UseSwaggerUI();
}

app.UseExceptionHandler("/error");

app.UseHttpsRedirection();
app.MapControllers();

app.Run();
