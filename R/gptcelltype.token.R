gptcelltype.token <- function(input, tissuename=NULL, openai_key, model='gpt-4', topgenenumber = 10) {
  if (!is.na(openai_key)) Sys.setenv(OPENAI_API_KEY = openai_key)
  if (class(input)=='list') {
    input <- sapply(input,paste,collapse=',')
  } else {
    input <- tapply(input$gene,list(input$cluster),function(i) paste0(i[1:topgenenumber],collapse=','))
  }
  message = paste0('Identify cell types of ',tissuename,' cells using the following markers separately for each row. Only provide the cell type name. Do not show numbers before the name. Some can be a mixture of multiple cell types. ',  "\n", paste0(names(input), ':',unlist(input),collapse = "\n"))
  
  k <- openai::create_chat_completion(
    model = model,
    message = list(list("role" = "user", "content" = message))
  )
  k$usage$total_tokens
}


