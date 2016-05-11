library(readxl)
library(dplyr)

tab = read_excel("speakers.xls")
names(tab) = c("sessionid", "session", "chair", "session2", "sponsor", "order_within_session",
               "location", "time",
               "name", "org", "department", "position",
               "email", "cellphone", "website", "title",
               "intro", "abstract")

dat = tab %>%
    select(session, order_within_session, name, org, website, title, intro, abstract) %>%
    arrange(session, order_within_session) %>%
    mutate(session_name = substring(session, 5),
           intro = gsub("\\n+", "<br>", intro),
           abstract = gsub("\\n+", "<br>", abstract))

catl = function(str, ...)
    cat(sprintf(as.character(str), ...), "\n")

sink("list-full.html")
catl('<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">')
catl('<html>')
catl('<head>')
catl('  <meta http-equiv="content-type" content="text/html; charset=UTF-8">')
catl('  <meta charset="UTF-8">')
catl('</head>')
catl('<body>')
sessions = unique(dat$session)
for(j in 1:length(sessions))
{
    s = sessions[j]
    subdat = dat %>% filter(session == s)

    catl('<h2>%s</h2>', subdat$session_name[1])
    for(i in 1:nrow(subdat))
    {
        catl('  <h3>%s</h3>', subdat$title[i])
        catl('  <h3>%s</h3>', subdat$name[i])
        catl('  <p>【嘉宾介绍】%s</p>', subdat$intro[i])
        catl('  <p>【报告摘要】%s</p>', subdat$abstract[i])
    }
    catl('')
}
catl('</body>')
catl('</html>')
sink()
