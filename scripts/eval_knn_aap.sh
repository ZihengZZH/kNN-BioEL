
CUDA_VISIBLE_DEVICES=$1 python3 eval.py \
  --data_dir data/benchmarks/aap \
  --bert_dir ../models/SapBERT-from-PubMedBERT-fulltext \
  --load_model save/aap/checkpoint_best \
  --batch_size 128 \
  --save_result_dir results/aap \
  --top_k 50

CUDA_VISIBLE_DEVICES=$1 python3 eval_knn.py \
  --save_result_dir results/aap \
  --top_k 10 \
  --alpha 0.1 \
  --beta1 1.0 \
  --beta2 1.0 \
  --knn 128