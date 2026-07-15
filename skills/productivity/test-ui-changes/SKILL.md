---
name: test-ui-changes
description: Compare implemented changes with a ticket and guide manual UI testing one small step at a time.
disable-model-invocation: true
---

# Test UI Changes

Turn a ticket and its implementation into a requirement-backed manual UI test plan. Present exactly one test at a time and wait for the user's result before continuing.

Do not edit code, fix failures, or replace the user's manual check with browser automation unless the user explicitly asks.

## Establish the Test Basis

1. Read the ticket description when the user provides one. Retrieve a linked ticket only when an available tool can access it.
2. Identify the implementation under test from the user-named diff, branch, commit, PR, or working-tree changes.
3. Inspect the implementation and enough surrounding code to find routes, prerequisites, feature flags, roles, test data, and affected states.
4. If the ticket is absent, derive the intended behavior from the user's prompt and implementation, and label it `Inferred`.
5. Ask one focused question before planning if the ticket is inaccessible, the implementation boundary is ambiguous, or a required prerequisite cannot be discovered. Do not guess a diff base or invent ticket requirements.

This phase is complete when every ticket requirement and every user-visible implementation change is accounted for.

## Build the Coverage Breakdown

Break compound requirements into independently observable behaviors. For each behavior, record:

- Requirement and source: ticket text, acceptance criterion, or `Inferred`.
- Implementation evidence: the relevant file, component, route, or symbol.
- UI observation: what the user can see or do to verify it.
- Coverage: `Covered`, `Partial`, `Missing`, `Unknown`, or `Not UI-testable`.

Treat code as evidence of implementation, not proof that the behavior works. Call out partial, missing, contradictory, and non-UI requirements before testing. Do not silently turn uncovered requirements into test cases that the current implementation cannot satisfy.

## Make the Test Plan

Create the smallest set of manual tests that covers every UI-testable behavior. Order tests by prerequisite and put the shortest happy path first. Add error states, permissions, empty/loading states, persistence, responsive behavior, accessibility, and nearby regressions only when the ticket or implementation makes them relevant.

Each test must have one purpose, a discoverable starting state, no more than three short actions, and one clear expected observation. Split a test when the user could pass one expectation and fail another.

Before the first test, report:

1. A concise coverage breakdown, including gaps.
2. The numbered test-plan titles and total test count.
3. Any setup that applies to the whole plan.
4. Test 1 only, using the test-card format below.

## Run the Manual Test Loop

Present exactly one test card per turn:

```markdown
### UI Test [number] of [total]: [title]

Purpose: [requirement this verifies]

Start: [route, account/role, data, viewport, or other required state]

Do:
1. [small action]
2. [small action]

Expect: [one concrete, visible result]

Reply `pass`, `fail: [what happened]`, `blocked: [reason]`, or `skip`.
```

Then stop. Do not reveal the next test card's actions or expected result, perform the test, or begin the next test until the user reports a result or explicitly asks to continue.

After a result:

- `pass`: record it and present the next test.
- `fail`: record the actual behavior. Ask for one missing detail if the report is not reproducible; otherwise present the next valid test.
- `blocked`: record the blocker and help identify the smallest setup action. Keep the same test active unless the user asks to skip it.
- `skip`: record it as not tested and present the next test.
- A question or unrelated message: answer it without advancing, then restate the active test status.

If a failure invalidates later tests, pause the sequence, explain which tests depend on it, and revise the remaining plan. Investigate or fix the failure only when the user asks.

## Finish

After the last result, summarize:

- Passed, failed, blocked, and skipped tests.
- Ticket requirements covered by those results.
- Implementation gaps found before or during testing.
- Failed-test reproduction details.
- Remaining risk and the smallest recommended next action.

Do not claim the change passes when any required behavior is failed, blocked, skipped, missing, partial, or unknown.
