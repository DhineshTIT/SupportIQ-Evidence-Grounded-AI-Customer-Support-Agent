# Decision Log

1. **One brand only** — isolates brand-specific support behavior and keeps the experiment tractable.
2. **200-example golden set** — large enough to expose several failure modes while still feasible to hand-label.
3. **Macro F1 as primary intent metric** — prevents frequent intents from dominating the headline.
4. **Majority baseline** — establishes a trivial lower bound.
5. **TF-IDF + Logistic Regression baseline** — strong, fast, interpretable traditional NLP baseline.
6. **Historical retrieval before generation** — makes drafts auditable and grounded in observed brand behavior.
7. **Conservative escalation** — insufficient evidence should prefer human review over unsupported automation.
8. **Risk triggers** — fraud/legal/chargeback/account-compromise language deserves extra caution.
9. **No fabricated evaluation labels** — golden labels must be human-created for the final submission.
10. **LLM judge validated against humans** — judge scores are not treated as ground truth automatically.
11. **No full dataset in Git** — dataset is large and has its own usage terms; users download it separately.
12. **Fallback generator** — the demo remains runnable without an LLM API key.
