# Using

* [Terms](#terms)
* [Command](#command)
* [Open File](#open-file)
* [Open Tab](#open-tab)
* [Auto Save](#auto-save)
* [Search](#search)
* [Replace](#replace)
* [Format](#format)
* [Paste](#paste)
* [Comment](#comment)
* [Suggestion](#suggestion)
* [Bracket](#bracket)
* [Session](#session)

## Terms

* `Leader` - Key `\`
* `Ctrl` - Left or right `Ctrl`
* `Shift` - Left or right `Shift`
* `Esc` - Escape key
* `Tab` - Key `Tab`
* An action is specific by **MODE** | `Keys` - Description

## Command

* **Normal** | `;` - Open command history 
* **Normal** | `;` `;` - Open command history and start new command

## Open File

* **Normal** | `Leader` `t` - Open file menu, enter mode **Open**
* **Open** | Type keyword for looking files
* **Open** | `Ctrl` + `k` - Move file cursor up
* **Open** | `Ctrl` + `j` - Move file cursor down
* **Open** | `Enter` - Open file at current cursor
* **Open** | `Ctrl` + `f` - Rescan for new files
* **Open** | `Esc` - Exit file menu

## Open Tab

* **Normal** | `Leader` `Tab` - Open new tab
* **Normal** | `Tab` - Move to next tab
* **Normal** | `Shift` + `Tab` - Move to previous tab
* **Normal** | `Leader` + `w` - Close current tab
* **Normal** | `Leader` + `q` - Close all of tabs

## Auto Save

* On changing from tab A to B, tab A will be write automatically
* On close any tabs, that tab will be write automatically
* On enter VIM command, all tabs will be write automatically

## Search

* **Normal** | `Space` - Enter mode **Search**
* **Search** | Type keyword to search, matched words will be highlight
* **Search** | `Tab` - Fill with previous keyword or move to next result
* **Search** | `Shift` + `Tab` - Move to previous result
* **Search** | `Esc` - Exit mode **Search**
* **Search** | `Enter` - Enter mode **Search Selection**
* **Search Selection** | Type highlight key to select word
* **Search Selection** | `Enter` - Exit mode **Search Selection**

## Replace

* **Normal** | `Leader` a - Start replace all of words which matchs with word
  under cursor
* **Normal** | `Leader` s - Start replace a word under cursor

## Format

* **Normal** | `Q` - Format current paragraph
* **Visual** | `Q` - Format selected paragraph

## Paste

* **Normal** | `F2` - Toggle enter/exit paste mode
* **Insert** | `F2` - Toggle enter/exit paste mode

## Comment

* **Normal** | `Leader` `c` `c` - Comment current line
* **Normal** | `Leader` `c` `u` - Remove comment for current lines
* **Visual Line** | `Leader` `c` `c` - Comment selected lines
* **Visual Line** | `Leader` `c` `u` - Remove comment for selected lines

## Suggestion

* **Insert** | `Tab` - Open suggestion window, enter mode **Suggestion**
* **Suggestion** | `Tab` - Move to next suggestion
* **Suggestion** | `Shift` + `Tab` - Move to previous suggestion
* **Suggestion** | `Space` - Select suggestion and exit mode **Suggestion**

## Bracket

* **Insert** | `{` - Open pair of bracket `{...}`, put cursor to between of brackets
* **Insert** | `}` - If cursor is before of close bracket then move cursor pass through that bracket

## Session

* **Normal** | `Leader` `Leader` - Toggle to create/remove session file at `$(pwd)/tmp/session.vim`
* On update new version, session need to be remove to take changes. Force
  remove by `rm -rf tmp`
