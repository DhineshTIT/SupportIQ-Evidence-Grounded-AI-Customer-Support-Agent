# SupportIQ — Hiver Take-Home Report

## 1. Problem framing

**Selected brand:** TBD  
**Golden set:** TBD examples  
**Intent count:** TBD

Good means: high-quality intent routing, evidence-grounded drafts, and conservative escalation when evidence/confidence is insufficient. I deliberately did not build a fully autonomous support system, multi-brand policy engine, or real Twitter integration.

## 2. Data and sampling

Describe the selected brand, cleaning, conversation reconstruction, train/test split, and how the 150–250 golden examples were hand-labelled. Explain how you avoided leakage between historical retrieval evidence and evaluation.

## 3. System

Customer message → intent classifier → historical retrieval → grounded draft → escalation policy.

## 4. Baselines and results

Fill from `reports/intent_results.json`.

| Model | Accuracy | Macro F1 | Weighted F1 |
|---|---:|---:|---:|
| Majority | TBD | TBD | TBD |
| TF-IDF + Logistic Regression | TBD | TBD | TBD |
| SupportIQ | TBD | TBD | TBD |

## 5. Reply evaluation

Report human/LLM-judge rubric scores and the judge-human agreement study. Do not report invented numbers.

## 6. Escalation evaluation

Report precision, recall and F1 for `should_escalate`. Discuss why false auto-handling is more costly than unnecessary escalation for risky cases.

## 7. Top 5 failure modes

For each: real example, observed failure, likely cause, proposed fix.

1. TBD
2. TBD
3. TBD
4. TBD
5. TBD

## 8. What is misleading about my headline number?

Intent F1 is not an end-to-end safe-automation rate. A model can classify correctly while drafting an unsupported response, and historical data does not guarantee future distributional stability. The more meaningful business metric is safe, evidence-supported resolution rate under an appropriate escalation policy.

## 9. One more week

Prioritize: better human-labelled intent taxonomy, stronger semantic retrieval, calibrated escalation thresholds, richer judge validation, temporal/out-of-distribution evaluation, and online feedback loops.
