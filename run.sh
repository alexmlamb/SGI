export PYTHONPATH=$PYTHONPATH:/home/lambalex/sgd_genik_obj/SGI/

python3 scripts/run.py public=True model_folder=./ offline.runner.save_every=2500 \
    env.game=ms_pacman seed=1 offline_model_save=mymodel \
    offline.runner.epochs=10 offline.runner.dataloader.games=[MsPacman] \
    offline.runner.no_eval=1 \
    +offline.algo.goal_weight=1 \
    +offline.algo.inverse_model_weight=1 \
    +offline.algo.spr_weight=1 \
    +offline.algo.target_update_tau=0.01 \
    +offline.agent.model_kwargs.momentum_tau=0.01 \
    do_online=False \
    algo.batch_size=256 \
    +offline.agent.model_kwargs.noisy_nets_std=0 \
    offline.runner.dataloader.dataset_on_disk=True \
    offline.runner.dataloader.samples=1000000 \
    offline.runner.dataloader.checkpoints=[1,201,301,401,501] \
    offline.runner.dataloader.num_workers=2 \
    offline.runner.dataloader.data_path=/home/lambalex/sgd_genik_obj/SGI/my_data/ \
    offline.runner.dataloader.tmp_data_path=./ 


