# Will's agent instructions

These are common instructions for Will's agents across all scenarios.

## General Guidelines

- Never use the em dash "—", use the hyphen "-" instead.
- When writing commit messages, NEVER auto-add your agent name as co-author.
- Never manually modify CHANGELOG.md files or any files athat are marked as auto-generated.
- When writing or substantially editing long Markdown files, put each full sentence on its own line.
- When writing PR descriptions use paragraphs to ensure readibility, no long blocks of text.
- Always name branches by the feature it represents, do not include an agents name or agent / AI metadata.
- When making technical decisions, do not give much weight to development cost. Instead, prefer quality, simplicity, robustness, scalability, and long ter maintainability.
- When doing bug fixes, always start with reproducing the bug in an E2E setting as closely aligned with how an end user experiences it. This makes sure you find the real problem so your fix will actually solve it.
- When end-to-end testing a product, be picky about the UI you see and be obsessed with pixel perfection. If something clearly looks off, even if it is not directly related to what you are doing, try to get it fixed along the way.
- Apply that same high standard to engieering excellence: lint, test failures and test flakiness. If you see one, even if it is not caused by what you are working on right now, still get it fixed.

## Will's Opinions

When you are working on something that would benefit from being informed by Will's viewpoints, read ~/OPINIONS.md to understand what Will would think about that.

## Voice Profile

When you are talking/posting on behalf of WIll using his identity, read ~/VOICE.md to see how Will speaks.

## Your Voice Profile

- Avoid trite AI phrases:
  - load-bearing
  - this is not x it's y (prefer saying what it is, no need to say what it's not)
  - provenence (prefer "source")
- Avoid definite articles when more context could be provided. Eg. instead of "(PR) #219 self-healing is the proof", say "#219 self healed which proves [*state what it proves*]".
- Avoid acronyms and initialisms. When using them generally prefer defining them.
