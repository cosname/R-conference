f = c("27日.xlsx", "28上午.xlsx", "28下午.xlsx", "29上午.xlsx", "29下午.xlsx")
fhtml = gsub("xlsx", "html", f)
session_name = c("5.27（周五）主会场（世纪馆）",
                 "5.28上午（周六）分会场",
                 "5.28下午（周六）分会场",
                 "5.29上午（周日）分会场",
                 "5.29下午（周日）分会场")

for(e in f)
    system(sprintf("soffice --convert-to html %s", e))

catl = function(str, ...)
    cat(sprintf(as.character(str), ...), "\n")

sink("agenda.html")
for(i in 1:length(fhtml))
{
    catl('<div class="alert alert-info" role="alert"><h3 class="text-center">%s</h3></div>', session_name[i])
    doc = readLines(fhtml[i])
    start = grep("<table ", doc)
    end = grep("</table>", doc)

    tab = doc[start:end]
    tab[1] = "<table cellspacing=\"0\" border=\"0\" class=\"table table-bordered\">"
    tab = gsub("<font [^>]*>", "", tab)
    tab = gsub("</font>", "", tab)
    tab = gsub(" style=\"[^\"]*\"", "", tab)
    tab = gsub("valign=middle", "valign=\"middle\"", tab)
    cat(tab, sep = "\n")
    catl('')
}
sink()
