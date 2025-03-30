from moviepy import ImageSequenceClip
import os
from natsort import natsorted

def images_to_video(image_folder, output_video_path, fps=25):
    # 获取图片文件夹中的所有图片文件
    image_files = [os.path.join(image_folder, img) for img in os.listdir(image_folder)
                   if img.endswith(('.png', '.jpg', '.jpeg'))]
    # 对图片文件进行排序，确保按顺序拼接
    image_files = natsorted(image_files)

    # 创建 ImageSequenceClip 对象
    clip = ImageSequenceClip(image_files, fps=fps)

    # 保存视频
    clip.write_videofile(output_video_path, fps=fps)

    # 关闭 clip 对象以释放资源
    clip.close()

if __name__ == "__main__":
    # 图片文件夹路径
    image_folder = 'visualized_lq_images_ss'
    # 输出视频文件路径
    output_video_path = 'output_video2.mp4'
    # 视频帧率，可根据需要调整
    fps = 24

    images_to_video(image_folder, output_video_path, fps)