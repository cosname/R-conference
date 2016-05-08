library(readxl)
library(dplyr)

tab = read_excel("speakers.xls")
names(tab) = c("session", "sponsor", "order_within_session", "location", "time",
               "name", "org", "department", "position",
               "email", "cellphone", "website", "title",
               "intro", "abstract")

dat = tab %>%
    select(session, order_within_session, name, org, website, title, intro, abstract) %>%
    arrange(session, order_within_session) %>%
    mutate(session_name = substr(session, 4, 7),
           intro = gsub("\\n+", "<br>", intro),
           abstract = gsub("\\n+", "<br>", abstract))

catl = function(str, ...)
    cat(sprintf(as.character(str), ...), "\n")

sink("gen.html")
sessions = unique(dat$session)
for(j in 1:length(sessions))
{
    s = sessions[j]
    subdat = dat %>% filter(session == s)
    if(j == 1)
        catl('<div class="alert alert-info" role="alert"><h3 class="text-center">联合会议主会场</h3></div>')
    else
        catl('<div class="alert alert-info" role="alert"><h3 class="text-center">%s分会场</h3></div>', subdat$session_name[1])
    catl('')
    catl('<table class="table table-striped">')
    for(i in 1:nrow(subdat))
    {
        catl('')
        catl('  <tr>')
        catl('    <td class="col-md-2">')
        catl('    <p>%s</p>', subdat$name[i])
        catl('    </td>')
        catl('    <td class="col-md-8">')
        catl('    <p class="text-center"><strong>%s</strong></p>', subdat$title[i])
        catl('    </td>')
        catl('    <td class="col-md-2">')
        catl('    <button type="button" class="btn btn-default pull-right" data-toggle="collapse" href="#session-%d-sub-%d">详情</button>', j, i)
        catl('    </td>')
        catl('  </tr>')
        catl('  <tr class="collapse" id="session-%d-sub-%d">', j, i)
        catl('    <td colspan="3">')
        catl('    <p><button type="button" class="btn btn-primary"><strong>摘要</strong></button> %s</p>', subdat$abstract[i])
        catl('    <p><button type="button" class="btn btn-info"><strong>演讲者</strong></button> %s：%s</p>', subdat$name[i], subdat$intro[i])
        catl('    </td>')
        catl('  </tr>')
    }
    catl('')
    catl('</table>')
    catl('')
}
sink()
