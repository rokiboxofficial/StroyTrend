using Microsoft.AspNetCore.Mvc.RazorPages;

namespace StroyTrend.Pages;

public class TableModel : PageModel
{
    public int ProjectId { get; set; }

    public void OnGet(int projectId)
    {
        ProjectId = projectId;
    }
}