using Microsoft.AspNetCore.Mvc.RazorPages;

namespace StroyTrend.Pages.Controls;

public class ProjectNavigationControlModel : PageModel
{
    public const string ViewPath = "Controls/ProjectNavigationControl.cshtml";

    public ProjectNavigationControlModel(IEnumerable<(string name, string fullPath)> tabs)
    {
        Tabs = tabs;
    }

    public IEnumerable<(string name, string fullPath)> Tabs { get; }
}