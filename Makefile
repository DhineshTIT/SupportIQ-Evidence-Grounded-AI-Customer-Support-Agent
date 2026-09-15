prepare:
	python scripts/prepare_brand.py --csv data/raw/twcs.csv --out data/processed/brand_cases.csv

golden:
	python scripts/sample_golden.py --input data/processed/brand_cases.csv --output data/golden/golden.csv --n 200

train:
	python scripts/train.py --golden data/golden/golden.csv --cases data/processed/brand_cases.csv

eval:
	python evaluation/run_evaluation.py

serve:
	uvicorn app.main:app --reload
