describe("the CV.Rmd file", {

  it("builds successfully", {

    # create a temporary file path
    temp_cv_pdf <- tempfile("CV", fileext = c(".pdf"))

    # generate the CV pdf, check for success
    expect_error(rmarkdown::render(here::here('CV/CV.Rmd'), output_file = temp_cv_pdf), NA)

    # check that temporary file now exists
    expect(file.exists(temp_cv_pdf), "CV pdf file was not created")

  })

})
