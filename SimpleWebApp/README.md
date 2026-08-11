# SimpleWebApp

A minimal ASP.NET Core Razor Pages web app (.NET 8).

## What's inside
- `Program.cs` — app startup (minimal hosting model) + one small JSON API endpoint
- `Pages/Index.cshtml(.cs)` — home page with a form that posts your name back to you
- `Pages/About.cshtml(.cs)` — a second page
- `Pages/_Layout.cshtml` — shared header/footer layout
- `wwwroot/css/site.css` — basic styling
- `GET /api/greet/{name}` — returns `{ "message": "Hello, <name>!", "utc": "..." }`

## Requirements
[.NET 8 SDK](https://dotnet.microsoft.com/download)

## Run it
```bash
cd SimpleWebApp
dotnet run
```
Then open the URL shown in the console (usually `https://localhost:5001` or `http://localhost:5000`).

## Build for deployment
```bash
dotnet publish -c Release -o out
```
