import matplotlib.pyplot as plt
import numpy as np

def read_heatmap_data(file_path):
    with open(file_path, 'r') as file:
        blocks = file.read().strip().split('\n\n')
        data_blocks = [[list(map(float, row.split())) for row in block.split('\n')] for block in blocks]
    return data_blocks

def plot_heatmaps(data_blocks):
    for i, data in enumerate(data_blocks):
        if i == 0 or i == len(data_blocks) - 1 or i % 2 == 1:
            plt.figure(figsize=(6, 5))
            plt.imshow(data, cmap='coolwarm', interpolation='nearest')
            plt.colorbar()
            plt.title(f'Heatmap {i+1}')
            plt.savefig(f'heatmap_{i+1}.png')
            plt.close()

if __name__ == '__main__':
    file_path = 'comp_out_0.txt'
    data_blocks = read_heatmap_data(file_path)
    plot_heatmaps(data_blocks)
