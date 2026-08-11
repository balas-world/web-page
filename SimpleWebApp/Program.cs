var builder = WebApplication.CreateBuilder(args);

builder.Services.AddRazorPages();

var app = builder.Build();

if (!app.Environment.IsDevelopment())
{
    app.UseExceptionHandler("/Error");
    app.UseHsts();
}

app.UseHttpsRedirection();
app.UseStaticFiles();
app.UseRouting();
app.UseAuthorization();

app.MapRazorPages();

// A tiny example API endpoint alongside the pages
app.MapGet("/api/greet/{name}", (string name) =>
    Results.Ok(new { message = $"Hello, {name}!", utc = DateTime.UtcNow }));

app.Run();
