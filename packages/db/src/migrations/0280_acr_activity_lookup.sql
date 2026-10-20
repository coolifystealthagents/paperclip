-- paperclip:migration-safety-ignore large-create-index-not-concurrently: Migrations run in a transaction, so CONCURRENTLY is unavailable. Live deployments should build this index concurrently before deploying. IF NOT EXISTS makes the migration a no-op there.
CREATE INDEX IF NOT EXISTS "activity_log_company_entity_created_idx"
  ON "activity_log" USING btree ("company_id", "entity_type", "entity_id", "created_at" DESC);
