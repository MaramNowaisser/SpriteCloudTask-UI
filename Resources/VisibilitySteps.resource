# Created by mnowaisser at 5/23/2024
*** Settings ***
Library    SeleniumLibrary


*** Variables ***
${URL}    http://www.uitestingplayground.com/visibility

*** Keywords ***
Steps
     # Press the "Hide" button
    Click Button    id=hideButton
    Sleep    1s    # Wait for the changes to take effect

    # Check visibility of each button
    ${is_removed_visible}    Run Keyword And Return Status    Element Should Be Visible    id=removedButton
    ${is_zero_width_visible}    Run Keyword And Return Status    Element Should Be Visible    id=zeroWidthButton
    ${is_overlapped_visible}    Run Keyword And Return Status    Element Should Be Visible    id=overlappedButton
    ${is_opacity_zero_visible}    Run Keyword And Return Status    Element Should Be Visible    id=transparentButton
    ${is_visibility_hidden_visible}    Run Keyword And Return Status    Element Should Be Visible    id=invisibleButton
    ${is_display_none_visible}    Run Keyword And Return Status    Element Should Be Visible    id=notdisplayedButton
    ${is_offscreen_visible}    Run Keyword And Return Status    Element Should Be Visible    id=offscreenButton

    # Log the visibility status
    Log To Console    Removed Button Visible: ${is_removed_visible}
    Log To Console    Zero Width Button Visible: ${is_zero_width_visible}
    Log To Console    Overlapped Button Visible: ${is_overlapped_visible}
    Log To Console    Opacity Zero Button Visible: ${is_opacity_zero_visible}
    Log To Console    Visibility Hidden Button Visible: ${is_visibility_hidden_visible}
    Log To Console    Display None Button Visible: ${is_display_none_visible}
    Log To Console    Offscreen Button Visible: ${is_offscreen_visible}
