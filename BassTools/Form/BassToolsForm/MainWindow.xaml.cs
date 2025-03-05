using System;
using System.Collections.Generic;
using System.Threading;
using System.Windows;
using System.Windows.Threading;
using System.Media;

namespace BassToolsForm
{
    /// <summary>
    /// Interaction logic for MainWindow.xaml
    /// </summary>
    public partial class MainWindow : Window
    {
        private List<int> strings = new List<int>();
        private List<string> soundNames = new List<string> { "A", "B", "C", "D", "E", "F", "G" };
        private float clocker = 0;
        private bool bpmFlag = false;
        private DispatcherTimer timer;
        private Random random = new Random();
        private Thread thread;
        private bool isRunning = false;
        private SoundPlayer soundPlayer;

        public MainWindow()
        {
            InitializeComponent();
            soundPlayer = new SoundPlayer("sound.wav");
        }

        private void btnStart_Click(object sender, RoutedEventArgs e)
        {
            if (!isRunning)
            {
                strings.Clear();
                if (cbxString1.IsChecked == true) strings.Add(1);
                if (cbxString2.IsChecked == true) strings.Add(2);
                if (cbxString3.IsChecked == true) strings.Add(3);
                if (cbxString4.IsChecked == true) strings.Add(4);
                if (cbxBPM.IsChecked == true) bpmFlag = true;
                if (bpmFlag) clocker = 60 / float.Parse(txtSpeed.Text);
                else clocker = float.Parse(txtSpeed.Text);
                thread = new Thread(UpdateLabels);
                thread.Start();
                isRunning = !isRunning;
                btnStart.Content = "停止";
            }
            else
            {
                isRunning = !isRunning;
                timer.Stop();
                btnStart.Content = "开始";
            }
        }


        private void UpdateLabels()
        {
            // 使用 Dispatcher 在 UI 线程上启动 DispatcherTimer
            Dispatcher.Invoke(() =>
            {
                timer = new DispatcherTimer();
                timer.Interval = TimeSpan.FromSeconds(clocker);
                timer.Tick += Timer_Tick;
                timer.Start();
            });
        }

        private void Timer_Tick(object sender, EventArgs e)
        {
            // 每秒更新一次 Label1 的值为 randomValues 列表中的随机值
            lbStringNum.Content = strings[random.Next(strings.Count)];
            lbSoundName.Content = soundNames[random.Next(soundNames.Count)];
            soundPlayer.Play();
        }

        private void Window_Closing(object sender, System.ComponentModel.CancelEventArgs e)
        {
            isRunning = false;
            isRunning = false;
            if (timer != null)
            {
                timer.Stop();
            }
            if (thread != null && thread.IsAlive)
            {
                thread.Join(); // 等待线程结束
            }
        }

        private void cbxBPM_Checked(object sender, RoutedEventArgs e)
        {
            lbBPM.Content = "速度";
        }

        private void cbxBPM_Unchecked(object sender, RoutedEventArgs e)
        {
            lbBPM.Content = "时间";
        }
    }
}
