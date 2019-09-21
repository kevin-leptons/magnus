# Using

* [Terms](#terms)
* [Open File](#quick-open-file)
* [Open Tab](#open-tab)
* [Auto Save](#auto-save)
* [Comment](#comment)
* [Suggestion](#suggestion)
* [Bracket](#bracket)
* [Search](#search)
* [Session](#session)

## Terms

* `Leader` - Key `\`
* `Ctrl` - Left or right `Ctrl`
* `Shift` - Left or right `Shift`
* `Esc` - Escape key
* `Tab` - Key `Tab`
* An action is specific by **MODE** | `Keys` - Description

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
* **Normal** | `Ctrl` + `w` - Close current tab
* **Normal** | `Ctrl` + `e` - Close all of tabs

## Auto Save

* On changing from tab A to B, tab A will be write automatically
* On close any tabs, that tab will be write automatically
* On enter VIM command, all tabs will be write automatically

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
