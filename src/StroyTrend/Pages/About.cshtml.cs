using Microsoft.AspNetCore.Mvc.RazorPages;

namespace StroyTrend.Pages;

public class AboutModel : PageModel
{
    public int ProjectId { get; set; }

    public void OnGet(int projectId)
    {
        ProjectId = projectId;
    }
}