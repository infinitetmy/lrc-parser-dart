# Changelog

## 0.0.1

*   **Initial release.**
*   Implemented `LrcParser` using ANTLR4 for processing of LRC files.
*   Added support for **Normal** (Line-level), **Extended** (Word-level), and **Hybrid** lyrics formats.
*   Implemented `LrcEditor` for creating and manipulating lyrics:
    *   Time shifting.
    *   Speed scaling.
    *   Metadata editing.
*   Added strict error handling for syntax errors, duplicate tags, and time-flow logic errors.
*   Added support for standard metadata tags  and custom tags.
*   Included parser method for efficient metadata reading.