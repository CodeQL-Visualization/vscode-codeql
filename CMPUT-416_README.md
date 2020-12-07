# How to Run

## Installation Instructions
1. Follow the instructions [here](https://github.com/CodeQL-Visualization/vscode-debug-visualizer) to locate and install the companion extension that handles visualization.
1. Download this extension's VSIX file [here](https://drive.google.com/file/d/1OtPz9uDCle7Qfm_N-hQRFZmhWkW09-L-/view?usp=sharing).
1. Open [Visual Studio Code](https://code.visualstudio.com/download).
1. Navigate to the Extensions menu (it looks like 4 blocks, one of which has yet to be put in place).
1. Make sure you don't have an extension called "CodeQL".
   * If you do, uninstall it.
1. Click the three horizontal dots in the top right of that menu.
1. Select "Install from VSIX...".
1. Select the file you downloaded in the first step.
1. Restart Visual Studio Code.
1. You should see a new extension in the Extensions menu called "CodeQLVis" with the ludicrous version number 416.0.0.


## Demo Instructions
We have included some sample files in the repository to run as examples. These files also include the CodeQL library dependencies, so should run out of the box. 
1. Clone this repository
1. Open [Visual Studio Code](https://code.visualstudio.com/download).
   * Run with administrator privileges on Windows. This is required to allow us to create new query files.
1. File > Open Folder...
1. Select the /exampleQueries folder in the cloned repository.
1. Open the CodeQLVis extension (left hand side of the screen, small icon with QL in it)
1. Hover over "DATABASES" in the resulting window, and select the option that looks like a box, "Choose Database from Archive"
1. Import both "mockSQL.zip" and "esbena_bootstrap-pre-27047_javascript.zip"

### Java Demo (Based on First Assignment)
If at any point during the following instructions you are prompted to upgrae the database, select "Yes".
1. Set mockSQL as the current database
1. Using the Explorer menu, navigate to codeql-custom-queries-java/example.ql
1. Right click the file and select "CodeQL: Run Query"
   * Notice that the original functionality has been retained.
1. Right click the file and select "CodeQL: Run Visualized Query"
   * Notice that a new tab has opened with a simple graph visualizing query results.
1. Right click the file and select "CodeQL: Run Visualized Query (Full Path)"
   * Notice that the visualization has been updated with more information about the data-flow
   
### JavaScript Demo (Much Larger Result Set)
If at any point during the following instructions you are prompted to upgrae the database, select "Yes".
1. Set esbena_bootstrap-pre-27047_204f9cf as the current database
1. Using the Explorer menu, navigate to codeql-custom-queries-javascript/example.ql
1. Right click the file and select "CodeQL: Run Query"
   * Notice that the original functionality has been retained.
1. Right click the file and select "CodeQL: Run Visualized Query"
   * Notice that a new tab has opened with a simple graph visualizing query results.
1. Right click the file and select "CodeQL: Run Visualized Query (Full Path)"
   * Notice that the visualization has been updated with more information about the data-flow
