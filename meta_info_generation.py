import os


def count_files_in_subfolders(root_folder, output_file, mode="w"):
    with open(output_file, mode, encoding='utf-8') as f:
        for root, dirs, files in os.walk(root_folder):
            for dir in dirs:
                subfolder_path = os.path.join(root, dir)
                file_count = len(os.listdir(subfolder_path))
                line = f"{subfolder_path}/{file_count}\n"
                f.write(line)


if __name__ == "__main__":
    # 替换为你要处理的文件夹路径
    # root_folder = '/cpfs01/projects-HDD/cfff-721febfbdfb0_HDD/public/anna/workspaces/HanlinShang/Celebv_Text_Data/celebvtext_6_images_512x512_test20'
    # root_folder2 = "/cpfs01/projects-HDD/cfff-721febfbdfb0_HDD/public/anna/workspaces/HanlinShang/VFHQ_Test/TEST_DATA"
    
    root_folder1 = "/cpfs01/projects-HDD/cfff-721febfbdfb0_HDD/public/anna/workspaces/HanlinShang/Celebv_Text_Data/celebvtext_6_images_512x512"
    root_folder2 = "/cpfs01/projects-HDD/cfff-721febfbdfb0_HDD/public/anna/workspaces/HanlinShang/VFHQ_DATA_resized"
    # 替换为你要保存结果的txt文件路径
    output_file = './vfhq_train_and_celebv_train.txt'
    count_files_in_subfolders(root_folder1, output_file)
    count_files_in_subfolders(root_folder2, output_file, mode='a')
    