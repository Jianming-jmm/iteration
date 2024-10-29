nsduh_table_format <- function(html, table_num){
  out_table = nsduh_html |> 
    html_table() |> 
    nth(table_num) |>
    slice(-1)|> 
    select(-contains('P Value'))
  
  return(out_table)
}