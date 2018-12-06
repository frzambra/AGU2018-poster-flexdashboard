# Set parameters
output_file <- "agu2018-flexdashboard-poster.html"
width <- 1800
height <- 1200
poster_width <- 70 # inches
res <- 300

# Render document
rmarkdown::render(
  input = "poster/AGU2018-flexdashboard-poster.Rmd",
  output_file = paste0("../output/", output_file)
)

# Render preview
webshot::webshot(
  url = paste0("output/", output_file),
  file = "output/agu2018-poster_FZB.png",
  vwidth = width,
  vheight = height,          # Use A series aspect ratio
  delay = 1,                                 # Wait to allow all element to load
  zoom = poster_width / (width / res)        # Adjust elements relative size
)

# End of script
