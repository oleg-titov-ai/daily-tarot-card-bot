# Maintenance checklist

Before a scheduled demo, verify active-subscriber filtering, card image fallbacks, readable captions, and the absence of real Telegram identifiers.

Verify the configured timezone and daylight-saving behavior before enabling scheduled delivery in a new environment.

Test one scheduled run with an unavailable image to confirm the fallback message is delivered only once.

Confirm a paused or unsubscribed recipient is excluded before each scheduled batch begins.

Review delivery logs after retries to confirm each recipient receives no more than one daily card.

Check generated captions against Telegram length limits before deployment so scheduled messages do not fail unexpectedly.
