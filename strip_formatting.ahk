; Assign a hotkey to trigger the script (ctrl + shift + x)
^+x:: 
  ; Store the current contents of clipboard
  ClipSaved := ClipboardAll

  ; Cut the selected text (ctrl + x)
  SendInput, ^x ;

  ; Paste without formatting (ctrl + shift + v)
  SendInput, ^+v

  ; Restore the original contents to clipboard
  Clipboard := ClipSaved
  ClipSaved := "" ; Free memory
  return