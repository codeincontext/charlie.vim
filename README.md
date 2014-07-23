Charlie.vim
===

Charlie.vim lets you split a line at the current cursor position. It's clever
enough to indent properly and strip any trailing whitespace created.

How?
---
Pathogen blah blah, you know the score.

By default it uses `K` (going nicely with `J` for join) but you can remap it:
`let g:charlie_split_here_key = 'K'`

Why?
---
Because typing `i<Enter><Esc>` or `r<Enter>` (depending on whitespace) is too
much work and I wanted to see how vim plugins worked.

License
---

Distributed under the same terms as Vim itself. See :help license.
