-- Enable Row Level Security on the five learning tables created by the
-- CI-style generated migration just before this one. Every one is user-scoped.
-- No policies, never FORCE: Prisma connects as the table owner, and FORCE would
-- subject it to the policies that deliberately do not exist. Hand-written on
-- purpose — RLS is not expressible in the Prisma schema (docs/rules/auth.md) —
-- and enforced by `pnpm check:rls` at the end of CI's migrations job.
ALTER TABLE "attempts" ENABLE ROW LEVEL SECURITY;
ALTER TABLE "attempt_test_results" ENABLE ROW LEVEL SECURITY;
ALTER TABLE "replay_sessions" ENABLE ROW LEVEL SECURITY;
ALTER TABLE "learning_events" ENABLE ROW LEVEL SECURITY;
ALTER TABLE "problem_progress" ENABLE ROW LEVEL SECURITY;
