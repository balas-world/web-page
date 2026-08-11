using Microsoft.AspNetCore.Mvc;
using Microsoft.AspNetCore.Mvc.RazorPages;

namespace SimpleWebApp.Pages;

public class IndexModel : PageModel
{
    [BindProperty]
    public string? Name { get; set; }

    public string? Greeting { get; private set; }

    public void OnGet()
    {
    }

    public void OnPost()
    {
        Greeting = string.IsNullOrWhiteSpace(Name)
            ? "Hello, stranger!"
            : $"Hello, {Name}!";
    }
}
