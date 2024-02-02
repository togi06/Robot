*** Settings ***
Library    Browser


*** Tasks ***
Fill the Form
    [Documentation]    fill in the blanck
    New Browser    browser=chromium    headless=False
    New Page    https://demo.nopcommerce.com/
    Fill Text    id=small-searchterms    Tolga
    Clear Text    id=small-searchterms
    Fill Text    id=small-searchterms    test
    Type Text    id=small-searchterms    test    delay=2000ms    clear=False
    # Fill Text ile Type Text ayni ama aralarindaki fark "type text" ile clear=False kullanip kelimenin silinmeden
    # kendini tekrar etmesini saglayabiliyorsun
