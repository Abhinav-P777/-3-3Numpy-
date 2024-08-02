import numpy as np

def calculate(lst):
    # Ensure the list contains exactly 9 elements
    if len(lst) != 9:
        raise ValueError("Input list must contain exactly 9 elements.")
    
    # Convert the list to a 3x3 NumPy array
    matrix = np.array(lst).reshape(3, 3)
    
    # Compute statistics
    results = {
        'mean': {
            'overall': np.mean(matrix),
            'rows': np.mean(matrix, axis=1),
            'columns': np.mean(matrix, axis=0)
        },
        'variance': {
            'overall': np.var(matrix),
            'rows': np.var(matrix, axis=1),
            'columns': np.var(matrix, axis=0)
        },
        'std_dev': {
            'overall': np.std(matrix),
            'rows': np.std(matrix, axis=1),
            'columns': np.std(matrix, axis=0)
        },
        'max': {
            'overall': np.max(matrix),
            'rows': np.max(matrix, axis=1),
            'columns': np.max(matrix, axis=0)
        },
        'min': {
            'overall': np.min(matrix),
            'rows': np.min(matrix, axis=1),
            'columns': np.min(matrix, axis=0)
        },
        'sum': {
            'overall': np.sum(matrix),
            'rows': np.sum(matrix, axis=1),
            'columns': np.sum(matrix, axis=0)
        }
    }
    
    return results
