Box AI pitch PDF
------------------

The site currently links to:  assets/boxai-pitch-v1.pdf
Stable alias kept:           assets/boxai-pitch.pdf

1. Copy your PDF from Documents (or anywhere) into this folder and use both names:
   boxai-pitch-v1.pdf   (current public version)
   boxai-pitch.pdf      (stable alias)

   Or run from the project root in PowerShell:
   .\scripts\copy-boxai-pitch-to-assets.ps1 -Source "FULL_PATH_TO_YOUR_FILE.pdf"

2. Commit both files and push so Vercel/your host serves it.

The Box AI page download button uses href="assets/boxai-pitch-v1.pdf".
