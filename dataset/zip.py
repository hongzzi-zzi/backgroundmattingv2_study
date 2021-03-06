from torch.utils.data import Dataset
from typing import List

class ZipDataset(Dataset):
    def __init__(self, datasets: List[Dataset], transforms=None, assert_equal_length=False):
        self.datasets = datasets
        self.transforms = transforms
        
        ## 배경폴더 안 파일 수/ 인풋 파일 수 똑같아야함
        if assert_equal_length:
            for i in range(1, len(datasets)):
                print(len(datasets[i]))
                print(len(datasets[i-1]))
                
                assert len(datasets[i]) == len(datasets[i - 1]), 'Datasets are not equal in length.'
    
    def __len__(self):
        return max(len(d) for d in self.datasets)
    
    def __getitem__(self, idx):
        x = tuple(d[idx % len(d)] for d in self.datasets)
        if self.transforms:
            x = self.transforms(*x)
        return x
