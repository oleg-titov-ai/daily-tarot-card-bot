# Maintenance checklist

Before a scheduled demo, verify active-subscriber filtering, card image fallbacks, readable captions, and the absence of real Telegram identifiers.

Verify the configured timezone and daylight-saving behavior before enabling scheduled delivery in a new environment.

Test one scheduled run with an unavailable image to confirm the fallback message is delivered only once.

Confirm a paused or unsubscribed recipient is excluded before each scheduled batch begins.

Review delivery logs after retries to confirm each recipient receives no more than one daily card.

Check generated captions against Telegram length limits before deployment so scheduled messages do not fail unexpectedly.

Verify retry delays are bounded and use backoff so a temporary Telegram outage does not create a rapid request loop.

Check a small weekly sample for repeated card-and-caption combinations so accidental content duplication is caught before scheduled delivery.

Restart the scheduler in a test environment and confirm a missed run is not replayed twice.

Confirm the scheduler records a clear success or failure result for each completed daily batch.

Verify an empty eligible-recipient list completes cleanly without sending test or fallback messages.

Confirm invalid or missing card media is logged without exposing recipient identifiers or bot credentials.