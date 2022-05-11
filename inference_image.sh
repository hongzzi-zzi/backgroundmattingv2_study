    # python inference_images.py \
    #     --model-type mattingrefine \
    #     --model-backbone mobilenetv2 \
    #     --model-backbone-scale 0.25 \
    #     --model-refine-mode sampling \
    #     --model-refine-sample-pixels 80000 \
    #     --model-checkpoint "model/PyTorch/pytorch_mobilenetv2.pth" \
    #     --images-src "/home/h/BackgroundMattingV2/5-1" \
    #     --images-bgr "/home/h/BackgroundMattingV2/bgr" \
    #     --output-dir "5-1_mobilenetv2" \
    #     --output-type com fgr pha
    
    
## images-src, images-bgr 폴더안에 파일갯수 똑같아야함
## images-src, images-bgr 폴더안에 파일 사이즈 똑같아야함

    python inference_images.py \
        --model-type mattingrefine \
        --model-backbone resnet101 \
        --model-backbone-scale 0.25 \
        --model-refine-mode sampling \
        --model-refine-sample-pixels 80000 \
        --model-checkpoint "/home/h/BackgroundMattingV2/model/PyTorch/pytorch_resnet101.pth" \
        --images-src "/home/h/BackgroundMattingV2/test" \
        --images-bgr "/home/h/BackgroundMattingV2/testbgr" \
        --output-dir "test_res101" \
        --output-type com fgr pha