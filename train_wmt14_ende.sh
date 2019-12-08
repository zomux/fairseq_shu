python ~/research/train.py $HOME/data/wmt14_ende_fair/wmt14_en_de_bpe40k \
    --arch transformer_wmt_en_de --share-all-embeddings \
      --optimizer adam --adam-betas '(0.9, 0.98)' --clip-norm 0.0 \
        --lr-scheduler inverse_sqrt --warmup-init-lr 1e-07 --warmup-updates 4000 \
          --lr 0.001 --min-lr 1e-09  --update-freq 16\
            --dropout 0.3 --weight-decay 0.0 --criterion label_smoothed_cross_entropy --label-smoothing 0.1 \
              --max-tokens 4096 --no-progress-bar --save-dir $HOME/data/wmt14_ende_fair/transformer
