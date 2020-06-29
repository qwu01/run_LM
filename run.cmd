cd data
python .\split_files.py
cd ..

python run_language_modeling.py ^
    --output_dir=output ^
    --model_type=reformer ^
	--config_name=./model_config/config/ ^
	--tokenizer_name=./data/tokenizer/sequence_tokenizer.model ^
    --line_by_line ^
    --do_train ^
    --train_data_file=./data/yeast/yeast_train.txt ^
    --do_eval ^
    --eval_data_file=./data/yeast/yeast_val.txt
