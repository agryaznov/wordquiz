# Word Quiz

Simple app to build and perform vocabulary quiz based on your own .csv dict

## Loading word list
Prepare your own *words.csv*
```csv
eng,rus
endorsement,поддержка
discord,диссонанс
cease,прекращени
```
Then put it in the app root dir and run load task
```
$>rake words:load
```

## Google translate to wordquiz
Tap a star near each translation you'd like to add to the quiz.  
If on a smartphone, open **Menu>Phrasebook** and tap to the sync control <i class="fas fa-redo"></i>  
On a PC, open https://translate.google.com/#view=saved and click *Export to Google Spreadsheet*. Then save as csv.  
